Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85A7E5CA9
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 22:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646951184;
	h=To:Subject:From:Message-Id:Date;
	bh=TiQoxbWqk+QLw7NZUDwyKmOwxL+UARLcDD/MwfGkaPY=;
	b=gVkyJpJ4nP3dWXlBJnuOkPYg0tpa0NLirW00X6q7kHDkjS45it78ycloAScvqXtn
	7JbXVn8z+EN09ZKz211gxktCraYWpHnSjOxR2j+ORTHUmZucQDWJhMNE98A6uCTcTBn
	YxaHAHAUCAG2EFVBO61c2wJN+9vR9Iu1Ez46W4R8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646951184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TiQoxbWqk+QLw7NZUDwyKmOwxL+UARLcDD/MwfGkaPY=;
	b=ix1czuInExQGrXLUnN6oAS4nDdfz4AotOTxDYbpRGWEg5shUyUIqG65ujxepH2da
	ISaYSecnid6V65E8pu3QKUrdBGj++GHC5IG5Nd3vzVpsX/ZmANX4wNlYWB+Q6NdpDMB
	c4bX1q3Ce/vEQXYL/s5PLDFi579AF8iPiPKHw8T4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f75f0b9aa-a564e126-fc2a-4b60-b92b-6b29dd9fa721-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e6d75ce0294cecd04914877c7baed0acc0abea0266c07c2346a973c919c839c
Date: Thu, 10 Mar 2022 22:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646951184
