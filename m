Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05B56465
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 21:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647985584;
	h=To:Subject:From:Message-Id:Date;
	bh=NQPBdXb3eLZo43DSlk5q71UYODWBfzmHmKQmobESICU=;
	b=bPXX2HuKEXGB+0WSenxN2t3twxPhTJdJPsMQCkVbYu+Kmk4fmP9nJk8oJe8ZuvKY
	5HCntZnFt93mrG+7PDy6eaK5i1FPpb/ISP8b7Tf2HvxrDs9ySMDGBamzfT7A3zEkA6Q
	GFJZaTHsy5isJYl4t1h3NMl1jHIY4hlwSl0gVXb8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647985584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NQPBdXb3eLZo43DSlk5q71UYODWBfzmHmKQmobESICU=;
	b=bI6duTlEMr4YW3m7vNqYvu2qEqBWMq/YiE38DmiImuGsKMarJjy81OuVMfHCvBX0
	T3KS9HPyn6gy7wIfF1fomyb0R90UPCj/NGEpR+wDnylxhVLIwgnHKsotzxOM86RU019
	wLhUTakH2idpa6+Yx6Rh/WUt8y49XaGmZfBeyZ2Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb3986a85-f303129c-0c63-4216-9e9a-e94a61425ad9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea6d37222a57c4a07fe7f92790e539aa35324e98d06013d2236d571b3f165df3
Date: Tue, 22 Mar 2022 21:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647985584
