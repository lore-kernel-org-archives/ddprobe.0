Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5622562
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 15:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654097879;
	h=To:Subject:From:Message-Id:Date;
	bh=WepP69sUzfW9Yt4SZeGQVFyqJzmw3yaIId9AaqwsSNQ=;
	b=YgR7DsnmkKfQi285NIk12p+kz1vOK+KDrDyWwPkBvJYg0esQmZmJjM0H/Y6AE/m+
	zdJF3L1ODG5niFwhvJ/62FHMz+2/SJ5u3MRhcyI0DR6d3S9/DXnahUjeMzOxcd8LriZ
	/BXeLHmmkdKYnlE3NfV8yMXNDorJj0i6kjVY11ro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654097879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WepP69sUzfW9Yt4SZeGQVFyqJzmw3yaIId9AaqwsSNQ=;
	b=aDLzUnhR6y4wp8KsY/ibMvxKcr7f3RIWet2pgh2fdcF8kyi1VpFf8gYGtd6kMjK2
	BVGgPhXW8seH1mEbtglXaZyeLBFA1UkduKI+dZp53i20ikjX9V+7CMYKGKBxhp97oWJ
	IojxCbPgsq2inm8SsRchMQtFJrVcmoVix8BrpfZo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811feaa0d2-0be3ae7a-f954-407e-a9ef-9248a116ff34-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e4a74b48cd9e1bbd3a52f954aad50e2e26e01cc5d364dbc3b93e4dca396a758
Date: Wed, 1 Jun 2022 15:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654097879
