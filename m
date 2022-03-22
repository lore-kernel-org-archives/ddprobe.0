Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7286AC6A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 16:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647964884;
	h=To:Subject:From:Message-Id:Date;
	bh=SNSk5FKBcSSEUfwtnYNSgoTB+uOJJyBJNGMmovZjC6c=;
	b=GIJMNmKONMtXCy6SuVZDWmnQ2qGflVlrhvITN1XRpJN2C+0hKL27K2XdRsDj7P/S
	IA57f0c+xBV9Osbw97KJ74dQpNfLvEsjmqtL2Qz5p/ialEXhCnP7KrfAhHZHCnVcZ8D
	tvTMQG0uGx4JrgPdZXYggcM4u7rW/lFkQe7m7sjw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647964884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SNSk5FKBcSSEUfwtnYNSgoTB+uOJJyBJNGMmovZjC6c=;
	b=CHlnV87awr8oRhxRyyTwDgJJU2mMwYRJSJU1Ww+iV6bjXJVJHEPksLSEXEwxl/FS
	H/shA1nwSyiUygTqYrtOhXCd+bxn4Vyf0N7LwmRw0JvcsD6j6KZA5iSeC6VWU5df6Xh
	K0awEak5yz8m6549I/h2d5WPG2dm70tXGtlqB06Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb25c8ef4-afc6d19c-43cb-45e4-9788-ad24e67c3e7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d8190a41410222e0c0bdaed2fbd8a02d6febf68c66419c8ca5f2e569e8c4c78
Date: Tue, 22 Mar 2022 16:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647964884
