Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FCE23AC
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 22:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652999999;
	h=To:Subject:From:Message-Id:Date;
	bh=yeuij6ojXUfutXsxkNR711N665CxyIQoCMKnvOtc4Hg=;
	b=K4JAlVa594E5wYGo04SpVnSwpzbxpHdrU8U5fofsmHFYKJFjMlNQamrb6P2cwliL
	ilCJSDQ/0eG2cRWmr6JtGNquzUnJ3LjEA1kboifNtFTUvIFMlDS27j/u4aRIdNY56tK
	eCTEmSsk9AMttwRGWorA1bjilaHdbCef4zUyhkoE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652999999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yeuij6ojXUfutXsxkNR711N665CxyIQoCMKnvOtc4Hg=;
	b=Ox9Lb3ERQeMf0d3xMl81XAYNwdpnQGfbGlgbSg9aHrR6oK2xVHaoR2X1N3dGPELh
	kM9MzvO3WSuv7TO86NJXFcZAkCHe4xY9Ejh5cQjRrg+tuZKebH7QwP2Ql9BRZmJ1d/4
	FmQ6/bGxJZJDoNmXDXlYJRXxmYCPWWRvrYprqNuo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180de7a4f13-65ed486d-86aa-4a04-99c1-b2c44fc98b38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1324bc6b786a03a13356e147bc1fa0c248f91be4838d3ce462d2bfbe21367f9c
Date: Thu, 19 May 2022 22:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652999999
