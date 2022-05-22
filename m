Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C2A20E0
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 18:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653244679;
	h=To:Subject:From:Message-Id:Date;
	bh=wjSUFjAOVARz3IlbNJBYOfd8jatSilpin1d+HSdd7ew=;
	b=Ln2QVThYU0osYoS/zHdfspAN1ipcPgXZh0/9i3/2LqPuiE3hu1ZpLHP1a72oPVvb
	QeseWZOS5rb4vNj7YEU3MOoBYeyFClqxTK9hV7b59TlNct5o6MR1GbTG+h+SPOkJGSi
	znIl/2FQ+JX+EyqbSE6d9vm3GIqg4/yBpzMostFk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653244679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wjSUFjAOVARz3IlbNJBYOfd8jatSilpin1d+HSdd7ew=;
	b=Xsyl3+pTKqnvaiD9Crlz9N9ZRB2Zya33HzZ4FcnJt2UdUgC8rg8e2TttNAPQJzJz
	Y30kQGhAKJpWZYTScmgUi+0xonlV+65XT9yxnhYlJuKfVFjCu9x57QpgonKU9zu9dhu
	o6lhfmxt4/uTHc9JT4H43CVMRiJmOmqVaCmCZTn4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ed0fd476-9ea9fe10-3210-442c-9bff-89e869139d93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8859fe13a7fdf9bd6a9502c3aa85b5cd42d2395c2490c6d60927f2dde1d69dc4
Date: Sun, 22 May 2022 18:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653244679
