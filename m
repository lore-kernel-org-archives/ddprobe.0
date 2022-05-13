Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6088180
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 06:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652423939;
	h=To:Subject:From:Message-Id:Date;
	bh=0DWLaRBRhyLfXhF/JrkDBE+y/aiVNc0E4iVSF6AnrLs=;
	b=eJ70no4YPBBy92UegUcljCpxt2iAjHs8aMqkR1+nvvj6EWXz3MfleeskFaxhPf5c
	Yuqlz7i+wBgO6papYxp16jLCyqhLCkXjyvkzpJsH00xL92f2bstgKimXeEEqf/ti+XP
	ur9sY9eM9dpGRrLTt1ikETk1k1YjzBvWB3NWsVEs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652423939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0DWLaRBRhyLfXhF/JrkDBE+y/aiVNc0E4iVSF6AnrLs=;
	b=axKOOP3/Pot6E/4FwO7QhP7kX9BF812JpHI/0j2gvY23cSEn+mkH5RqJNUwZzfq2
	cwXy8FkqyEC01QpnoHu8OiS1N8+TEL2JVh80npas63TypERngPHjdnjGw9do8uPlJiN
	vNSnorf+WgTiwNdkM1tGVGqCfovfCfgb1m0fJW6E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bc2454b5-d0548802-1d05-4751-9eb2-852822212297-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f23dd347beb4d6de23e0c51e9aed9d81ff9da27b9df099b58d885edf797b4ca5
Date: Fri, 13 May 2022 06:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652423939
