Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7AD2C89
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 00:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646440285;
	h=To:Subject:From:Message-Id:Date;
	bh=Ihf6FXm2QLLasexOpkFEYTwpr3YVtIn0CLvmOYZVisE=;
	b=Bnut9Ml4qDR8X9/6sshgSgEeGQuMBeXjz/fAEGP/VTzNVjjjOTh8J/Sm0F2BTT2r
	kfDP0Hu9Tjukybn0dXjOgi2Rjj5lDvQqwep7g6tuYSH6UHzbge96GcszTIIyNANhl2i
	S+wRMNhcmpMOsHUX4jc7DWiCs8YhsPNTmEkdnunE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646440285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ihf6FXm2QLLasexOpkFEYTwpr3YVtIn0CLvmOYZVisE=;
	b=f82Th/CLOzvng13ZDslsttil5gglAhY8z+VyraO+JznMuR0rbQvKxD1ltvfCSn2p
	FsnIcI08VADbx67xpm0NlYBDMOIxigcTnE26sb73fnpbehHry3qRAm/Dq48GKiGGHop
	PUrKilkbVf/y+ipD5IWmLNBMB5CtfWlqtGj3dLGk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f577d0276-df4dab66-792d-414e-aae0-05c950042d47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22e03bdfaa52711a5df7f5cf29492bc4eec8460027d0932ad008660d96021686
Date: Sat, 5 Mar 2022 00:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646440284
