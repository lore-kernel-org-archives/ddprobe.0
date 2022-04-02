Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB8237A
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 15:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648912678;
	h=To:Subject:From:Message-Id:Date;
	bh=KT0y4rvYvAOgaDeziQnNMZQN/jzrqJQgsbtWV+y/tow=;
	b=HgUI2RK9uhfTzznQ34WBPTH4dYMpcFOkYLEstI6hsNvn/cBVACx7VFv9p3Se7s1J
	EQ0r/BcLjFGjDYUNwxfgrzDfhjUWoqC2xIQc9T2P91rxN74pJruyH/IBnJ41PEWwl1h
	mkPnYUpzDYHZwFJSEbjvEuWoBpSM3rji2OH9kD90=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648912678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KT0y4rvYvAOgaDeziQnNMZQN/jzrqJQgsbtWV+y/tow=;
	b=Q/+ZH+SdOWKzF3f9esy6WoD+XwiJCKSYvdMuhrNsA8xZlvEhCtl7wVyAOtG4P76u
	bOZgoo4PA0KExTyBibDQMnmZVcV4oaVqCOg/B19/n8XYqNeZKzi39cg38/SnR4QW1jL
	Jgx5ex7HqtvMGUTyfwPF+kN3xoTU/1y4sMkknWQE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017feadabda3-d2a2eb46-30ad-42f5-a0fd-0c80e57e5c89-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: deda33dbe82464b4f7e4e0694d72e499361d51531451f22b971d497daebff894
Date: Sat, 2 Apr 2022 15:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648912678
