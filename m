Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07FF6257A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 10:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656413212;
	h=To:Subject:From:Message-Id:Date;
	bh=aQIQpKBJMIfvyimQvQIMs+vtT3jF4uu//pr9e8tYGG8=;
	b=R6m9Nu6A/LuWlChzWwD5OsSZfGAODUtX/WRrPtnjAPuZMScUw/XUsvRl+GRTnvg3
	eT8A0P3SGsHxCyHod5FmOVoT0qZ3mXBNKhHtkzFVVaaPoT3q7e07ba4ad78KprWDpxZ
	zOTE6ZIIFAM0L6EYqJwgt8+QgU1vEzx6hMhJx2Zc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656413212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aQIQpKBJMIfvyimQvQIMs+vtT3jF4uu//pr9e8tYGG8=;
	b=KnucVG77IYCGStQzOMVLpAwzdYpin4uZ6hH4lzq9jV4RLL+qd/jUQ0eNMx/JTWWK
	glcQNzczF5TVt1r1fIORZQvsbtry8N3+k79PKvgMfe3TuctotT0920KpBd5xLlgtpYv
	rb2THcADI2D7xPCBU4oWGi/yTq2DAoqUjwEXaA+M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a9ebce94-6013a2d0-b5ab-479a-9d7b-6731c1c84c10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bdb6b6cb733998c944ee8645ffaefd148b3920bec8d37a8b216bfd4678372c56
Date: Tue, 28 Jun 2022 10:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656413212
