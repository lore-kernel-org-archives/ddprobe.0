Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134DB7F
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 16:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653669179;
	h=To:Subject:From:Message-Id:Date;
	bh=W7KVStEH5sKC9aQeMezToeELVeLrdu5tV5S36LDffCA=;
	b=Fx6RAywbLzM+IfTUXyCFpnG9Kt6GTSOVXcl4maAFjZQBru9OJ6jJ3WnVMfEpquEz
	QZ2+fx1JUiY1D3+/d+Go9COlF98yQYNRpdPaB+m1HqzUq7z5mnCRA+Gp9a6OW7gs97Y
	8LbX/PhwvtN48fC2ZzE0or0bofSlHzaGghSyPWGs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653669179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W7KVStEH5sKC9aQeMezToeELVeLrdu5tV5S36LDffCA=;
	b=JHVYTaOsjrDxVToaMGbNBzBXQ0viYf5BUWxmJHjhAFdCWzWaByvFh1AJWqbBvfoV
	XeUt4/TFUJ6S64F+7I3p3lsZpe7f98j8xBierh5hm4VaQpf60a0/CVESqSuK9fMs6al
	0SvEKF3Ba0EWk8zyhXi7dojp15fLD/SFlU9lflEE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181065d2f97-5ceceb95-44d0-44dd-a26d-ece3e4028609-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b26ff63a0ee81e2a72a223133c362ca5954a575687df2b7bc4dabce24b06c4b5
Date: Fri, 27 May 2022 16:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653669179
