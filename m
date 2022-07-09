Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D033ED8
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 12:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657370812;
	h=To:Subject:From:Message-Id:Date;
	bh=7GkKWlY8AbBl+jh7XE/xDZPYi3wRWrMbpY4rzxPEzR4=;
	b=XkBmO4nLkp/Zr/QzgG6WJt+kDfONH1S1tKO+fz4zm1KS0jTuEDIboQW8Xqr5t+MO
	KsJjC1icWfNRcAXOcX1pbtPJqlXZLVmlbu5/pKLe80wfMCBczL2hF9/S5BilccZ9wpK
	YzoPYj7IxZsM21Sh7+UEXkuQXq3rku+ae2bIDaJk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657370812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7GkKWlY8AbBl+jh7XE/xDZPYi3wRWrMbpY4rzxPEzR4=;
	b=TOFS2Osv9LYpElsqiJpmhNQFIIAuF2hCBmBr9JzlErNUTCn0YRsNFjSMwTmI48S0
	jH1hJxp/DFlQ6BBre+H1UfYHZqNWHEd2HA9vw/d5cBl7Iammf/WJXbYhxfzDOVIN0zL
	DUBkriDVNhGk6t1qbdXPnT4aHyazo8YpQRXCM5oQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e2ffa02e-2d891c26-9cf8-46f5-82cf-7dc5aaebbbf7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd1c673b142ea3e50597d2d21b041835001cc38e3813b4c061de45583b5c73bf
Date: Sat, 9 Jul 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657370812
