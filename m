Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624957A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 06:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650694978;
	h=To:Subject:From:Message-Id:Date;
	bh=6cdf0EouT8O1lfxAco3ltFq+NRKAewf0zXkOrnNvG2E=;
	b=XnqQUoazvT1qB02CLikic1aannF40EJHXZZtMXwiaJmXGPFdV9NGOVrB75fLege0
	KbKYFUyEkmkJ25ZpzLPjB3T0jl0KWB+Z9ih3X8H9o0dp//OyA7I1331lBzFSd43SqfV
	nUTzIWVjvF+1zDTdQ5B3VSrifIEJavBsPvGJgC6I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650694978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6cdf0EouT8O1lfxAco3ltFq+NRKAewf0zXkOrnNvG2E=;
	b=bDg9017Vgv1r3Xb5j1zhjbxrKlXXYT+SXQGTpNT7v0c+g9lUObnqhwSeyNDe4+Mi
	8T4Hxtoyt14HjHFhXyK6rdCXxs/ya7MUjTvbHJaRLlK2Y5c+Qd2NBmkma/nMrXsrgEp
	XySOMOhWTjS9DMeVJ2hTJRdNK9xW1Bp5mF7ruo04=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018055167ac4-18cf6183-d7e8-4315-b2da-fd63d961f0a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 978c42a087e3b54b6a3ccae5c2c54ebd0e5f61edc46652ecfc371c7b5f04cde4
Date: Sat, 23 Apr 2022 06:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650694978
