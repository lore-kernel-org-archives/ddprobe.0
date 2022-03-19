Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0587218D
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 00:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647650784;
	h=To:Subject:From:Message-Id:Date;
	bh=i77UC6z0dDrtQKA2wNqDYmZ3uibVsCRdWIzTKErWXo4=;
	b=Gxbspzt2QZ2ycP6C08MCoc0RtS6H18wgswn/aHGoB8SVe6AMiXCB3PHdeyrkzUes
	hw0wwIHak0BX706Zv4vQRYjxcxIKdnVRXCZpaCvqVPxiykDWrNysYP5g2a92VgdDFB5
	NKrDyrdek25ksXYDt3AMY+Pbz+XXxiKDjvRSZhdw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647650784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i77UC6z0dDrtQKA2wNqDYmZ3uibVsCRdWIzTKErWXo4=;
	b=EacFXJtup8J87C7mj8i2IJDl1Liv2+YP68UZ4N6wlOESsGlA2LzY9ifxY2uFmys2
	Fnq4LtzbiDA1chDxM9qeXOElq3b/nDiKloMYVRYLrwMxII7ZhVFPnjNwRW+G+aVV7qV
	4Kbf3LAaxdfRdMdlu6l2g0b21cl9yEtM5kp0BrRI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9fa3c611-5c68f2f2-27b9-4e3c-babc-02291a97b59f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c551f4ba4a2dd14da75a2a1636a504d2cba13998481b5b07e9e1fe4027742794
Date: Sat, 19 Mar 2022 00:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647650784
