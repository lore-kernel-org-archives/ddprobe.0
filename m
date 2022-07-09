Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2637E9
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 01:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657330612;
	h=To:Subject:From:Message-Id:Date;
	bh=rc9Jj8hwQ4L0vy8BgCbTffYSUh8/MH7CNa8gqMaScog=;
	b=KEgaLI3tugLbMGcI+ynBrw3ckiKdqw+GNfwn6hlDB3+kpju+5p+mHDzWs9yUyVc/
	8oalvD3WsqWGOWhk4N049Lz2AZ1J+Ik6haNCTtOg4wkMS8PLR9kA3yLJpUFqoO1IFo4
	ZBeHWVNes8hmX5EVjkwjqFAOiy1H1RuyYjwRm1xU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657330612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rc9Jj8hwQ4L0vy8BgCbTffYSUh8/MH7CNa8gqMaScog=;
	b=e7EET5bS8ICeDFfiVF1tjyE7Osg56JMrDP7z4btgv6Blgw1JV5VaeQ/EZ9BR6wyV
	3Pn0YbY6iTknRHYkhu7jL7zADVMMeW/Niuj0hQQq2ScVZGlfg+BKZTeohvr5nGJVyq6
	QSSsZsNytFV30U+eLW3GFiPLklD/G+3Q+fUTo12k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e09a384b-77e7fa1f-e1c9-4fe8-8894-758162c8abe0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ffbefe86e1eec728d1d1f727509d12434e07c2297593802df99bd8b77cbf6f5
Date: Sat, 9 Jul 2022 01:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657330612
