Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7C17E0
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 05:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650259258;
	h=To:Subject:From:Message-Id:Date;
	bh=g3pVQjs9A2UkvolhnCW7NhunvKzc72tXbOxgGbrLiXQ=;
	b=mVq7o1/IH0db6A2cUY84GoNa7Nsj8xEFwV4p0qHApGBsMHHwfE18UE3qmrmx83d9
	NKkkmwRHXg5sYjKdYGuqpGuyc3itXkbRhj9F0JkD2bao7WayQon/JxoEez/WwgBvUXm
	3LnIUeMbsmYyLPI/ROkpw8Pl9Oavdb8HXzo0rnFs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650259258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g3pVQjs9A2UkvolhnCW7NhunvKzc72tXbOxgGbrLiXQ=;
	b=gCm5DbgsjEWR5oXvDw4VRSfUsxaWb7zEgQlfvazVfIUBw+wb37Mk7ESkwxrAtHiG
	zXMVPdBgvWcmntuChoU6f2lp5SOnMZXniB0XH3WXhlda2Q8EDP6yz41PdwPuklXe9X7
	Ly9I6i6q2U075BRZEEOEir3yMI39dYcbO0yqapk0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803b1deba0-295d654c-3e2f-4a36-b144-2c68364f5388-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 091e737b4d6d8f79c3436e4c9ea0b06fd49ffb65616ca75a1e0617a1b2efb2cf
Date: Mon, 18 Apr 2022 05:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650259258
