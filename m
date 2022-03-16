Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D51A43B41
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647461485;
	h=To:Subject:From:Message-Id:Date;
	bh=gQc5CqIWlgrjZr3g5ENYRy5H+fpp0ZO41Ydm384MA7w=;
	b=VKuALjDtShZNRP0II1eWvYiZgIeuIjiwHhYMrjic0m2115N4Es0qlCcgVuLKfF+J
	pL5D3l0ZEdu0hgK4AuH1PXYg1O6g4R3vkjWnDHxEQ0yJLCXRBuLVUXAjBgLLhQZTaeF
	TYfRQccrWbvEfBmBaIG7VCmtQ7ePyF6+B8ewqo3w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647461485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gQc5CqIWlgrjZr3g5ENYRy5H+fpp0ZO41Ydm384MA7w=;
	b=MqObkuaUzNY1zn8av3iAUe1bwIC0JodsKtP5mX/Ux2PU5CCHRjJvv8dqLo4Kd4lt
	sjJxfkZvAamiYNwfm3k7xZbLWQ7l0f5zEf3VDwDg0xjS0l6hpkOt4I86Xhnkg5sYzOu
	Hz9VgLS/ZpmW69/YerPlu1JldYzNy7J3RglT79Cc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f945b4a74-e9b036fe-9505-4691-9668-7fb35fc36ae8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8236b66e2b4153d8cf73b981a1cbba812b03a115555fb014b24434c7e0e4928e
Date: Wed, 16 Mar 2022 20:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647461484
