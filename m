Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6450A4C60
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 07:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647674484;
	h=To:Subject:From:Message-Id:Date;
	bh=IxTbtpRfKQe7z1aAEMUKmuGCadRFlE/hGvdYmAtS1pE=;
	b=Vuqsui9rQh5RCkm70cqJFVgGlGzTkLespDpu6zRmZTO67IDMxcD2YO/xT+Q09CxO
	j/6wAyM938tLUAgNw0qBGm8mAm9kdAZT9Grx86RyE7YT8jfcWvczm7oIuWoMpXUUrig
	dPbqsjqnIoPf8QT8fuzID0olnJhbEqLreYgdQYTc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647674484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IxTbtpRfKQe7z1aAEMUKmuGCadRFlE/hGvdYmAtS1pE=;
	b=Ob0rXFDFpQ2338KIDQ0O+Vloxd4XTz2ipqiKHhOPZfMYxQk16/jfp5nwm9uTJxi0
	76VG5rz3X9XXdbrvl5EkO7Jri2PwqjRnSOc1o0KCNlR9kOCvRFfQDBfheY3GG7Pzv11
	NVBbogLiW/J1TqHI/7ZGKr/Tx+O3gxosstgZgF98=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa10d6804-c39f3f2a-6fb8-4476-9c9a-1994e06ffc64-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9325c46de426425cf107fcc732b3f7f757e799fdd82e545e9186a5d7b8f0780e
Date: Sat, 19 Mar 2022 07:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647674484
