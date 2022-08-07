Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448857C
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659868252;
	h=To:Subject:From:Message-Id:Date;
	bh=kYwdoKZbWyFkE2wce/dVOHsIHQUowLo6zNDWF7O+jSQ=;
	b=lm5xDti1XDcubmo7tcxR61s0fMMmmCUlmr9glB5COFeAEjAUcgWFgcRMhpXgLFB2
	Lzx4FX/UipjOEZsxDnBd7xnz3QNIDPbdL7Aw+rFuZsviBt3HCjdFtcF5yZvK9Y8a3sB
	Y22Za+ftG9eIzvZdN20crNWtT+wYjBogHOx6bsiU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659868252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kYwdoKZbWyFkE2wce/dVOHsIHQUowLo6zNDWF7O+jSQ=;
	b=WiTyIBU+AwID9S7DgxapAVwoz2BVZvbSwF8TUMgWbDKPx6gcVGnEXHL8cB9FugUa
	CmbLZAIm0XmWEtI0C3Kcrs4m92cMRMuc3a7j9dWx+3G6Kvx9mKvDJxrhAYUPwpL8Bk6
	p0GAAyFORAMUdj4L/z5o5KemVUW0sRIFWYTlgJm8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018277db89a0-a65d84c1-9fbc-464c-a306-d02e71893d95-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d138c7005e88cdce2d08b078e3b1cd56eedd1c85a10c1ee44f2b4a9f59cb8cb9
Date: Sun, 7 Aug 2022 10:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659868252
