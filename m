Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82BBB2F37
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 12:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647520884;
	h=To:Subject:From:Message-Id:Date;
	bh=Vj9rIQPXf3aYg9FF/mhaFRdZKlb3i8Zvob8EfqTpav8=;
	b=MJq3nYpiN4TK9/O9T34T5odyfzCZDgy3Eot+9rQfjxVW0xcFFdRtGuE74iJWLZ5T
	JRnJOpJ55p1y1Mph3jMFPaPL/AukW74UDGEvLuqbd+G1G7MYOIAZkQQbma9YmQrFF8v
	yE856z3Gjy5m0bAubp43kWXz/TiD8G4uOh78puEw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647520884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vj9rIQPXf3aYg9FF/mhaFRdZKlb3i8Zvob8EfqTpav8=;
	b=MrXvPIpR2jhrhuTwH1iwYksU11oSu2tMW99hSyzuIjCYHBf79HTVV0DEV1f+l7Xy
	MXECLPDVu+b1+dDMSTCFaCkpMnO21sCVFSgcABwmiqzWgyRiFZoCno6NCOEOt1cgtKr
	7Dc7NbLnCKo1lR2ZuHR4kITR3dbo5vG7blzcNZLw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f97e5a82f-4ca8dd9d-61fa-48a3-a13e-3f20970cd15b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfa898eb4b7c1cef26cfcb34049ad359c482fe35de2a6aec970fee4598ceb7aa
Date: Thu, 17 Mar 2022 12:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647520884
