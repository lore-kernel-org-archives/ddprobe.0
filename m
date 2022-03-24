Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9AE97E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 05:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648099618;
	h=To:Subject:From:Message-Id:Date;
	bh=PzHGEePr1YQpWLhGI+5FXmHNVWiLxspWG6kflBiG5Jo=;
	b=DNjFoNzNTYp3HtEF/idaTkYNGm7BIk4E2HD/cd4vF0fvTQi6qdZ79NlaU/+NL7jO
	8kjf1cl+1l45Ns0MmIyvwF1xQv8mTrOdOHkbgutvunthFm8qlvm4I7WaGj36cRPrnca
	Ia3a4H8Utwyyjitx7P2SBFX/Ix4p6PNR+PPnW2Ok=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648099618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PzHGEePr1YQpWLhGI+5FXmHNVWiLxspWG6kflBiG5Jo=;
	b=SqD/+tBTsP1DN1kbV8+zLaoCR7msDY+2P4e9mlLf0l1eexc/AlGDubAN4hfP/Mwe
	2ByK696GBvacZY84tGZvh6n7TekZjDgIGoIjTlvr+IWj/fqoGUyhfAPqLF1BBma9XeK
	kC9um4sd/0+EKrJ1Y+D+JiPtqUr+deRuhFrNEKlo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fba646dce-ab2d7336-619f-47c4-931f-392ab8f97e6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1280ac78712ee15e52eabe40d863e8efb82c6d9fb788fe764c3ce9dff26acbf
Date: Thu, 24 Mar 2022 05:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648099618
