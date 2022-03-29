Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3445E258C
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 20:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648584358;
	h=To:Subject:From:Message-Id:Date;
	bh=loE+QTuOVCciUkKhX3zt4i+5iEboFLoY8cYWu4QCDCI=;
	b=JPrbxy+Q7nVQ0LXgnf5dzVR0CJzhiP2PmflU1vM9sGnJsSVvtKS9Sn6nWRIGV9UA
	267XEIHKSiB76PnY+ORlEkWZ+Ih7vdlXt9YtXgutjMKKChvKtHg4y7AhTMRRgS5usCv
	aXhSNABTV8H9WJ1pC0YRu38hgPVenAAq9/qqJi3w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648584358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=loE+QTuOVCciUkKhX3zt4i+5iEboFLoY8cYWu4QCDCI=;
	b=NgTlWzSthHNRb0jWEs4iJacnwWO3k0+if4WV5FW/lyhLJLGh7/BAFtvGBwhDuIgv
	581RY1lpc4FQc8KsOYmYq6tD/q3TJPRF0iKRczMTccCw9kfHvdnvU1moaKdxSw3UXky
	z5Eb25KzmiLudMHbSweGhDRbSxSbiQ+JvgMbcpiE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd748f9a2-085949a1-a838-49cb-b8ab-67ce4b8401d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec5924e8f463c96b43f7269efaa463d8f2bd2f70cc546c146f8b3f67cbb4bf53
Date: Tue, 29 Mar 2022 20:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648584358
