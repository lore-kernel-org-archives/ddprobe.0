Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155B17B
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 11:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650971698;
	h=To:Subject:From:Message-Id:Date;
	bh=J8JwmAVI5ELHHSUdQ72tO68i9VxjI6TPlaXRjO8uwcE=;
	b=bp3lxFF+anuAnIj2OIsQN4ws/ki1/rk9h15FtBtoQcnA4wBUEta+l93/wYBvw7cR
	d88vbEIpEf/VXGyQxidAqhdf8rgWS2ev7Mzx6loT+OkZdzFABhambsypTgruuZ/BBlY
	EKuPJCEvcrpO1nXmSPdPNr5FXe7IvXyo3npF+8GU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650971698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J8JwmAVI5ELHHSUdQ72tO68i9VxjI6TPlaXRjO8uwcE=;
	b=VKImYN4zi/4ff+pc2t79pxDaqQBS1BPuJpjulc5d5SHz7u+/z6aStZBjDeC9vgP7
	VPh4zj5AcJd7BDctIvBIsTzUxCXCylH1YTUqpHLFayA6QobkCK3Em3GvBTisM4qk44v
	EFYdjTIjtoId+vM2GDUYHv7qEwOkhWOBhExD+ZSE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806594e48e-ea29dc35-a274-49fb-9029-6251a98786ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c3bf034bb0ec7f8ed6241ed64f4e81489115280ca93179842d1feaba96d339d
Date: Tue, 26 Apr 2022 11:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650971698
