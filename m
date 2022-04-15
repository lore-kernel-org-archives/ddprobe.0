Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040E22F50
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 10:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650020098;
	h=To:Subject:From:Message-Id:Date;
	bh=dZaFBp/jW8Nq4ulNEe2F040/86hjSvkcuqqz07/pvjw=;
	b=M/MzodWXOVZqlJFLFzLI27sl/fiztyvo/0tR7d11WkP+1Nsd5zHRG/+YrE3tFypU
	Axl8GNU9dctUvTk9PG+HUdX9n2kSSalqojjsuxPUfN9GDtw1EWMi629QNNvQ2BQx5Et
	GjKpUQU4x+3FbeiXxKbHi7oHAFhOnsA+9RTGt9hM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650020098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dZaFBp/jW8Nq4ulNEe2F040/86hjSvkcuqqz07/pvjw=;
	b=DGjjAPvOJoHLmIqFhe3KdSvgVInkFd+lfar+1U91k2QIRFKTCPu6DwPhjLhyU2sE
	T9ZJL8coQgw16+HaG931XjxnaI44/5iC2fCoJHayQaFsEf4TxjIFJuUWB3UXkScvptd
	leppoJyoiPlw2dqqvUQTvk/feDWBph9jYitrnADA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802cdca0ee-463b6489-38bb-4f74-8b06-33a0f71c0320-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e478216bb62231214ab8787a99a79bc663df45036222f0835f8ed91fc661acca
Date: Fri, 15 Apr 2022 10:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650020098
