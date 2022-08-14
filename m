Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9C8A4E
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660463452;
	h=To:Subject:From:Message-Id:Date;
	bh=br/BxLDZA01tzfek8Xe2A2AHUuj2H7Nvrl5dNDwjxPQ=;
	b=dosjdDAetvpnAKeyOymgQQ1n0Stjj+I0SJK1wWKST0ud3C3ZnzBb/UvscJEQEJCC
	6hoQYsXe6sEUsf1B/utCF449rqXp5VD9riS4LcOjLIaMVXZJWJn7I3rEkYuAMcFd7Vr
	MqNQuy+eRFTr9DuGHiWYn8du1OToFY0KktckVf9o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660463452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=br/BxLDZA01tzfek8Xe2A2AHUuj2H7Nvrl5dNDwjxPQ=;
	b=kxghWp2DWuFW/N6bxaCx90OgqjMOP6RYvXBugd6V7f1iMaBfmlSTTigZg+SzdSHN
	4puBrfKGrsZI6YfKGH+1rsNZwazcBrVBve6jI5lrV5+lYdmhIe3LOImo20L32qyiafH
	d/JG3GCeHS0fhE3OH+JcqoWFi3vAqnjYD7ka+3mM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829b559187-a2438519-4ddb-4895-b7f5-0743e81d3d50-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47cb18e35ea055fc169ce7780f5e3e2e810cf51a2e1cb7ba45f34dde1499d449
Date: Sun, 14 Aug 2022 07:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660463452
