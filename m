Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34F71FA1
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 16:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648138978;
	h=To:Subject:From:Message-Id:Date;
	bh=0vaBbuxCrYALKX6UE4BJWF4elJ2bbcSfPYvR1IpCOig=;
	b=OlX1pUgyznQeSSkaKEMOkBg9wZ6N5UTZHBHAWnGPYaIctWrtBlqLxE8ckSqE7kgF
	S9fAurbGERkJ3hAiWpBa8MYW8oFx5L+2RvjnX5D0eGyly9KS3Rz6Wpav5qmpQWW19wt
	h6+fSirIAdgbLO/u4tW9tVdHYWPhTtvZSCk1hF/A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648138978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0vaBbuxCrYALKX6UE4BJWF4elJ2bbcSfPYvR1IpCOig=;
	b=RUbauaNc6+liEoYZ2GP/o1qocLo6Yr/Zzb0vFy5srnnLGoBUbCNrNBotI14Tx6Fs
	x7he8NC6v1F/66efZNcUz0IGc1e9Ivx4Z3Sx4oaac+9ztH64HmjbssJQ5yMLuEAW4dl
	HFE53EeU4LAzl+mnWbDiqqz5TqyRXe16BkIKK38Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbcbd040c-82d7b32b-7a94-435b-8cf8-270541db520a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5925811a43c8a7c40e3f8d5d2e83461ad447172c289f0658b696882ecfd909d6
Date: Thu, 24 Mar 2022 16:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648138978
