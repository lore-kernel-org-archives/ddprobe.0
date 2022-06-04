Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01FF21857
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 17:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654364399;
	h=To:Subject:From:Message-Id:Date;
	bh=CuDUZm5zTnhHkFfsXyn0WR6I4g0xThKvYYlWwg8VOPU=;
	b=hmgKBL+gl1rraDhjMVVEGl+zXo+QylLzFHMTXCm6NY+LDFQ5XCPl1R+WiiQS2OqX
	DceJ8w5Fs79epk/UkIeiNGPBC7Yjefu+5pFF5QNxJMF+qkA39bfTHppN1rt73Uv5iBo
	oUzLCJmadGzLKNlhNXO/CI80uSs+I+9Cd6oX1Y84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654364399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CuDUZm5zTnhHkFfsXyn0WR6I4g0xThKvYYlWwg8VOPU=;
	b=VdaXpkMIkIJfZGbH4i3sLOP8j+SIl2sREx5Jzu+wtm2L9H8WI3eJnXFwZ4ceESgW
	fzYi3drQwkMee2boIpzZrqBlK2LT2iPnlYDzTXjFSQCOOJVn+XFX1clSx/9oA6xsb5Z
	b6RCS/E7VmbpATbW2Oo6b8KxQpDmcxX0fiY7f5J4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812fcd6690-6b14f37a-4070-405b-98a3-3b37fb3c291a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5df30ad2806433ca8a4f310e18b91869632d244c19c977c9685a7dbd8b9ee0d1
Date: Sat, 4 Jun 2022 17:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654364399
