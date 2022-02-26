Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 805E73B3C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 14:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645884384;
	h=To:Subject:From:Message-Id:Date;
	bh=/c+zp6G0CWlY0wRxanImPej1qk9rV57w7ILDm8q4jtI=;
	b=i9r536Bk5KJfH9nkTi8YZVAVqBKBgotF5BxHOikOHotwwNcjqJLMQ6LDo7qjuYqb
	t6rUwTH0YVOuuPiohggcmhOo9JIz151visCv31btJfnfRBvmTK6JbYArXsBTmeHj1Kf
	jEFdIYkGimmHBk75LFeg4FfoxM972M5WItLZiX8U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645884384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/c+zp6G0CWlY0wRxanImPej1qk9rV57w7ILDm8q4jtI=;
	b=ai9qlhTjCCXzI0tndwBGKFVFWp9WKhzJ8Ia/6AWKr6oaAERmucen4Qd1H0c+O4p0
	nqHLTJJagtGZZtugR9Q/USoUJfznDt2aimh/3UmQHD1CGYL5oadf4Oi5TYhVYgvcXKi
	fVSrHPY0a6wHsQY81+bJx4As5JjE5hbO94+3pcCY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f365aa600-055ddc27-e3ab-4ce5-b52a-650c81008c81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd610cf21e2358cfb2bedecb7633d24cbfcddfd9c3be48f791d2970fe9c98096
Date: Sat, 26 Feb 2022 14:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645884384
