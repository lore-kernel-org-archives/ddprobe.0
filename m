Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36A23D79
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 09:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647507985;
	h=To:Subject:From:Message-Id:Date;
	bh=dX2ioIMO8SR0BmndP5eY+lsqkBcskjrQ7/4Sa4RGpE0=;
	b=AHEnZc2Q95Qhis9cS18TA4U3KopkqJHjDbFu3PoK3JTx61hxeWHjvFOv8HCg0CRn
	f4D4YKRADhSAWyyzfzjcwb2vNhQicaEs/BopIDolH0f14Shz8f7CVuy5hV24JeS+VrR
	mVl2yqkG/YTUGee4z6+H1NvZjhUNcOmHxdaGnJAw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647507985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dX2ioIMO8SR0BmndP5eY+lsqkBcskjrQ7/4Sa4RGpE0=;
	b=iZuvO1pdLZHhZ7multkYYSRAwJcUl1cIwj3mNZ3494S+YKm5N/T44o3Ek+shAxAN
	DK6E7gNAjZhvtbAQreAQRIccYPdANMQJlZUH9tJvCIPY+xp+gb4BCsRFE7UtMYDRbXl
	XQR7RV3C7fnN5/1KMIhZZc49vKnEBswaTX3kMHs0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9720d1b8-07526ee2-740b-4f66-b160-e7ccbfd4f09d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5969929d337930b71f16998c688a3d9cd8741e181d1721f60a074159c7c09168
Date: Thu, 17 Mar 2022 09:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647507984
