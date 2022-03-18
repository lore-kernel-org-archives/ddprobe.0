Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5502FAE
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 14:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647613885;
	h=To:Subject:From:Message-Id:Date;
	bh=4sYlQllE1upjJoivcs5/dWKgjYavMuAIr3BhXEy7BoA=;
	b=GKifQmalz1mcQg/MYfWU0oLBpUz0/yPct1x5nZUDWjUiZWEDK2k3ijmuplWc20da
	63gAaAgx+m4CEWWDByXRuiFzkXO3+WgST7qcOs464EKuiC4Bes0Z3XDWHgdBEosOwiX
	lfigzznD++q9qDht3N466aLgFRhsYLbiNxJ625J0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647613885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4sYlQllE1upjJoivcs5/dWKgjYavMuAIr3BhXEy7BoA=;
	b=XoBdESRni9az8IFoOLbFPFgnA5cwa8/vxa7m++BcSld9SftEzhxuSycOxRjplsxr
	1m1plRNPZPjHMB8Bkh5eo3fL24BNgu/9Cj2MfnhzNFwSm9W3XeQFrIORTcHwy7XdF/t
	jelqD8PGUCWp5UqWr/M8HtgZmi6btYGYXaQuf1rI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d70b981-68c0bf31-d936-4ef3-a249-9a77dc8faa85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 214018177b7405bfd3d1e702a2c7ff18057aaaaf2a7ad828e77a8372e8d055d3
Date: Fri, 18 Mar 2022 14:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647613884
