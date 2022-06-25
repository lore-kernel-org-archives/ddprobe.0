Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282D57C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 05:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656134212;
	h=To:Subject:From:Message-Id:Date;
	bh=sv+RhoBe5N5YrKMXgfwl7/VfnrKOqYBB0ME4oL6JSuA=;
	b=Qcp0y+f8RFUnZBIMlOUynDHy0y2R2XXNVpJI8uwZ0h40sA7hABwCJWjbXVGypBrA
	WOeiePg26Z3hrtUOOKFU/y2HgnhPxM/RhGwx1Wxqe3OuXtHllfy00YIZT/p9JvjR6yl
	5q3HXYpfQ7SfA0V+c9kvQrgOlNTsMSJP8dwwzx4c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656134212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sv+RhoBe5N5YrKMXgfwl7/VfnrKOqYBB0ME4oL6JSuA=;
	b=OrCMuuMG9NFFY8fGK8zsC7xxoJONVk3W+QIC3fM++AZflvhps/cjne7GWGnUBZHM
	XnmKb+J7apo/Do/GYKI0gUx+O5K94xlI+bpk5Vyul3l5PkOH+dSbcslmO5GLLG/vWNl
	COF1ABXT5HA9r0/A1qUZZjWf3mLJE9apjxWiOOU4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181994a9ad3-b72b5a4b-ff9b-4c93-ac7a-d7b43208743c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: adbb2503e4ab02dba628d58b773a6b0d2100d3852c8e3aeda9079449d14418c0
Date: Sat, 25 Jun 2022 05:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656134212
