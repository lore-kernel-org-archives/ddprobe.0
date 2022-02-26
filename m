Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 764663686
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 03:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645846284;
	h=To:Subject:From:Message-Id:Date;
	bh=TFWNACI5YeD/O0NImzuAOWk7wxBl3m3fMruQbtLEukY=;
	b=cpejnmX0IvTjsybtFIxr/qNRu0+fPSQ6Chbk8F/UMrmghwqVEU33aDLEjSa+nZ0w
	8ZhcdIAw2ENBmGfl507i8lH8UUqe8HCYv1AxnrzbldATRx3BTeX2QRbaCR5cSXjyCKY
	3iYzEq0HbtI99FERQ8g0lpQ7RPqKkd1rHHMQW8VE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645846284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TFWNACI5YeD/O0NImzuAOWk7wxBl3m3fMruQbtLEukY=;
	b=YH+slg9GOL+sIPm+WmJhlAq3DN/awEi+ZC0Vy7CZzMzD+P7YjB6UIiuxI9nGrP0P
	P4/WRRXp7AGJzJ9HSb88662jDPwSJCIe5Ki4Oq/GyqJ8qGE+NTBEwCtSok54kMr4+M3
	vgUgpycY/oQJPTK/vHyBV1nADAIHPF2ULw3cPFWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f341549c6-0605ccc4-dac4-4dd8-a6ca-2fd36b9bc50f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 015ea0fb3bcf26a06ad35a7d3ae35026e4a6d3002af83265c259be4158adc279
Date: Sat, 26 Feb 2022 03:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645846284
