Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8E47F
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 08:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652775659;
	h=To:Subject:From:Message-Id:Date;
	bh=p8UOfFbNKETKCa/YuybKZzdoDJ5S8DNnm+899jDgkpc=;
	b=ZudtLR+7S0xK7lY0iycCZJojPt35rfSsy9PD8kXgfX5Sqk0LBnLSjngVtd92xoAO
	3JLF7nswQJ4MYW1j/EkfB0ZbuKayuiJUy/xltWcMeQ+afvidTC+deSbyH9GMkCUj1oj
	7daBRf5VNnZxnognRPrrfuD/l/k6uG4zLElkT8ec=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652775659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p8UOfFbNKETKCa/YuybKZzdoDJ5S8DNnm+899jDgkpc=;
	b=ha9h5c84htjnQp2akYTC4C8GMQ/w7ocM2dnDhMIDWntZjN0jbkbOf4psw4A5fuNS
	lwx0UnhR1w9LqAml5jSeAUsbRcxbLXOonu8zIewiwVnqc95I4hiURKtCoNdJS9lMBqa
	6uM4prRJ0/FVcGB2jXeLlNYjDv1slkSxn2FM3bIQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d11b2714-116b65f2-67dd-4712-8d66-9105e54ae4ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0888522009531d61cd00f9915129c9477e0336d554a4b1206e8fa12f343aa6b9
Date: Tue, 17 May 2022 08:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652775659
