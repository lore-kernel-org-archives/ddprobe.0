Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF15EEA6
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 09:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658135812;
	h=To:Subject:From:Message-Id:Date;
	bh=N+wmCEel4rPfi1Ap6m6Qft962VzijVA5ddvtu5fBr4w=;
	b=Gk47glp3QsEZmORjx8IBy3zUbgzdEN18A1jxiK77zXn26ilbgMlDJT6ao/gWRrQd
	cbRhR5chQdZs7Igr0cPOvZRv/Cb7K5GmMPzz9VayftlvDICbg9YnE0Inw/Kzl8tf4Nk
	HDWcXrjZroHQwRSrUD6z35WNT6l6p69g3rF82ptg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658135812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N+wmCEel4rPfi1Ap6m6Qft962VzijVA5ddvtu5fBr4w=;
	b=IvMiI/VJmabvcFYrEFBg9U3d6X4jI8uQb+Dh5FdDp3lNRXcTjsQ7ameTpCoG72Z1
	p9JdruyuaqzaeSigTi0nBuahBmy7HWmbM14hTHJ0u0pGhrUU7AC2UB8QggzXnDyYlQM
	xUsfawZZmfMvfmBj0x3Qr6CwQhH0r7WCtJBUdMcc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182109898dc-18720566-6982-4e30-a52b-7f87f79149d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3880ff2227c6ef1822e0c89b4e169497e9bee0e125635ecbd2931549ccfca7e2
Date: Mon, 18 Jul 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658135812
