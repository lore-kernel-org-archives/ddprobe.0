Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 843197B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 09:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656494813;
	h=To:Subject:From:Message-Id:Date;
	bh=1+AqwdOhxu+fDnu44/CEtLbfm7hGFWUhoVs5WvcHUys=;
	b=Q96EEMWXHZfzHIx02ce4lg6e9f0NxFGPDJ4oNmJU0zsQ+j24HIiEx7NQsGr/S/+r
	iNHYOKqL+rMMogalzytSAy0WslOk1deU2r5y8yrgSzxOl2wZ9/meqGi4RvfXT1FeI8v
	XcMOLp3/W1RYzpMCRU9nL60EvKkCJOs5jnST/tR4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656494813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1+AqwdOhxu+fDnu44/CEtLbfm7hGFWUhoVs5WvcHUys=;
	b=kzvhiiQFgcGeJsz2BNCfMnP3L2w0jZjxiL6GVGnnrIm3TVfdgXNPG6+lnksIBje2
	sF6ymnYSfZyyKFN+xWGlfTpfYDtCKiJVp5a/tUUmL9Pjr+MGz6mnM9crKoVXoFhU5UQ
	5lcJHmaLz+yN3s3SS1Br9SDkX8anM/wiNM7IDDMc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aec8ecb2-81a714aa-de84-42d6-9ff7-9680493f1120-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3744e8f7bf8038b65dd5b981ed09d33557283fabd5d75afbbffd74b8d07ecae2
Date: Wed, 29 Jun 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656494812
