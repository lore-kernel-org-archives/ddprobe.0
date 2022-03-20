Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4F8833CE
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 23:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647818485;
	h=To:Subject:From:Message-Id:Date;
	bh=xnYkwdZsyW+qBkrprSTg1UAA9hobG4asgjmmx5aRJwE=;
	b=fvQDkVRpHuq86FwD7eyPW5zvjlg+B6JrsiyAaGL1bvWMipMAZLRJ56mnimsWSeds
	L45TLLJ+ah7Pxfk48TqukpRfl4o3hCU9+QwH73wFhQxvmHKNOMQRbxKYlNU2mqijoVX
	M6ClA7doM/x9IPukRTeVOBz72tXdwcB0cDt8H8b4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647818485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xnYkwdZsyW+qBkrprSTg1UAA9hobG4asgjmmx5aRJwE=;
	b=MJVhyuqar6RLjGOBuMg6fV0pB6nWAUKTyRRai0gXcO/CSuir5bxg08O5wBEu52D8
	FY/nXnuEI4OnnD/afNcTj2hmqOUJSQIn7QFUjkSytyQ9E0WRiLBOE774np8XCbp0Xgj
	aJ9oOIMsrH+E/cELXgo8OnicEJOO1ZbzI2VXV57U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa9a2aca1-51d90b0b-e925-4eb7-8513-45541a03b507-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc6ee77ac839b0ebc9c98e20cb8a3e70f24000ed0d142563fe5aec3101b46820
Date: Sun, 20 Mar 2022 23:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647818484
