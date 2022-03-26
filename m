Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A257E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 12:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648297198;
	h=To:Subject:From:Message-Id:Date;
	bh=0oAh7yD8lKJDM8djssRoXZGEqzwB494X9D4Fb6M4ojE=;
	b=G0LDYnBN/XwX4Et+M1m1Kthj4QAl0SipdV2houLmKEdeVy9suZfwM+5sithrONYv
	sKHv9U0Upe0JmLT1TL9OM9ULbtTB+222iS7A6fie9xLSfgMPUVeuSBXQPyY+aysnhwK
	04BKEE3xr5ZsMNVM2LWqoe5pDqqezEgi1lKq6Ue4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648297198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0oAh7yD8lKJDM8djssRoXZGEqzwB494X9D4Fb6M4ojE=;
	b=EowiXcDynUncidaYRdXg9QNjp/O/3AMsRHNv96uF0e5sjB06qtIf9ZLwwMOqflI4
	/LYsJUyLQ8CeqqMYCuhL/75/iMRzWUsh7QFIXlv8zNucT+VSzO/uyxV2snM+/PiI/JJ
	eDPN/EsdAcVcCmcghslu78E5nNowrucNLQb6c2LE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc62b42ce-30001c0e-7196-4536-926e-59e3c90b2994-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 393f02cd2082f81215da3c2f7007281c8e4fbccff88828d8e09498a720921a3c
Date: Sat, 26 Mar 2022 12:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648297198
