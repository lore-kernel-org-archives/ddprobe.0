Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB45D23C2
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659268853;
	h=To:Subject:From:Message-Id:Date;
	bh=jjqF2T6Y5hattsMRl7kJ/6fb/SRsRsj5cCvK4N1Q7YM=;
	b=Fs0GreRusCUX/xNE8RH5dCkMb/OvvLhFOK8JYbrWi941PJp9URdmI9xcQCCUvn5i
	Ki3c/h4Y5QzMxuoJCj5GPbgIOVvHrc4PeiT5Qa2ODvRlC7waKkRVIHacBj1ihPJAZdp
	znw7gGm/wMD1fbx/x6J7xfln5A8i0x6q+2/0UUXc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659268853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jjqF2T6Y5hattsMRl7kJ/6fb/SRsRsj5cCvK4N1Q7YM=;
	b=B1QdtQ455/UawCqRGhLeyrbGQtJJqhAcERwicQab1BisYSIyO54ZE0WS55XkLLIV
	L0Y6JDRlFAPIeo3CVBtbJZ6vpIfUpSTRioim4AWdyFRPmfpt4baYKNkdAxoasLQg/QR
	oTllTDRUjzTGStHyoX++gUh8BiDgH93XRYxw1L94=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018254216b46-322b3cee-55b0-4210-9e6f-37296b1963d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6146e61388674a907c3b0c4f7488629af63864f305ad5b4c40d1a44344b7ac50
Date: Sun, 31 Jul 2022 12:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659268852
