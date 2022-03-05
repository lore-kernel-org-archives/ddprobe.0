Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1137A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 18:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646503285;
	h=To:Subject:From:Message-Id:Date;
	bh=x+T+/8AmI+MIMx38amjrbnABjWV2qaVEjsfaluYpCQU=;
	b=IsuVruriYySjUHjIZY6buaR4L1ZESYbZw4s00qS1ak1SbaAaJQd1ZXrdBD0YEGzg
	GDAcMx+UeKdtsWdcWKI+W1xTEqN+gHtDhQpH22cPsxyaPriKsPdB0EJxw/angshptmT
	APjeleflRvvAdvwozTVSdBtj1Ufj/Qdhq921/jwQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646503285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x+T+/8AmI+MIMx38amjrbnABjWV2qaVEjsfaluYpCQU=;
	b=XoDWHczJPh/wtAb+Bc7ggqEXZmITA/t3tSgwsE/37UhlbO3W7RMrttAn5D3aP0XW
	UPsVPxjIlwr/ENBTGeuwXyseU9FrmFAigjTZpEvoVdOrM3wZcZ1TxNGxDYVOdxqi7WL
	9Y1i3sgxus+2/m/4/u5t9Wif7nl8nQsf9/yB93Ck=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5b3e5044-9802279f-af07-43fc-bbad-f3952eba84e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97fa8d73a49b1cf2992e59efd3f564f7ed3fdb8809c15ea6f54e9d7f573e7d85
Date: Sat, 5 Mar 2022 18:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646503284
