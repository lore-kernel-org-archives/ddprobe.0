Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F82A139C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659791452;
	h=To:Subject:From:Message-Id:Date;
	bh=A8y98EO95tbzpkc8O4Ub/6NgPYCF4d6nqc1YOjee3Iw=;
	b=idkjAlotzkEwzPEoZ+zBOYjloJjcDgwHHQXXlOLBPPCje+yzSNXo81OkykrRzTrZ
	Mw8UK9e59pQktJdGf06+qiqTHA75UEkMGbIlC8WY9sJZF656P3peU6KwZyPLy8ntw5W
	dAbaawIBc2eVYhui+p2v2l2EyjWjZNH+pZPbv1tw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659791452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A8y98EO95tbzpkc8O4Ub/6NgPYCF4d6nqc1YOjee3Iw=;
	b=NCQKa0Dcm4k8SoVbm7blk0bN0+vGduScnX24EZPU782jvv7cUj/IRKoQA4VO55dq
	j36yJNfwswNnPqO/6KuMoUKLvcqFs64jRJ8sanHHjhfFVDuxa4oxOZy7Da1zzy0YxIS
	ifjExxSuO+e6wHfcqZmdmCPeFI6jb32B5RHj6q9k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827347a973-ae4cf795-18cc-488e-ae16-22484149e444-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0eb7fd8b6d578cdc215131d5547107cce8acdcbf353d6a9e22bc5853cc031eec
Date: Sat, 6 Aug 2022 13:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659791452
