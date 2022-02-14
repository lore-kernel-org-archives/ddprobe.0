Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80D3B365
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 02:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644805809;
	h=To:Subject:From:Message-Id:Date;
	bh=Ztifp2JdMzajPeqwUvlw+eBzT335WvxJNA2r+Ffc0Es=;
	b=Qiwa5BwNIdVErd0mOT4Mb4PSMsTuCfqy317lHDxFO66kI8tXKFj16nzCX7pftoMF
	a/V1XR+AqvdsHl7XNcehjzwFqj5/Fma23VpsdcEnowicCMVT42VX3B8995g0xgUWcKV
	woF1vTAXVYwQ83VQmhruTkd/m1AAbUJJxy5JCpD8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644805809;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ztifp2JdMzajPeqwUvlw+eBzT335WvxJNA2r+Ffc0Es=;
	b=kwnALkNSM13ICMaN+HeShgNJR5f/H+Ue3FuA76la2neoH3k1l9w6BSgEAShyiDZ/
	tXuJVmLazowtP3jVmS6kSLEVaem4NXpgWHPX7c78uWUB6mBrWnQMGgXA7KIEN+Y82du
	KK9kdmK3PXrmeIvl8NKFr6swfqyVGpzRNkdtdJPg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef610e515-3fc36a6a-d49b-4dd8-8d1c-a17bc105dc57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a32924342ef2021d0ef0be6915fa883efbd541c836196392327ad0a5a8407e22
Date: Mon, 14 Feb 2022 02:30:09 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644805809
