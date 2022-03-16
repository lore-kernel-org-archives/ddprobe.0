Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75A63B41
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 19:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647460584;
	h=To:Subject:From:Message-Id:Date;
	bh=QknusALGx7ANYu1jBHUTeScnaZmiiqUIv44v3txo55Y=;
	b=ZR8llKRuCwx/GWtMFvznQL+QAufgq2tWQ0flwdTUM3771L/py8eZGs4LHz5N72wE
	VosJvWUlJUmjCYhWweF+ZuNLZ+C/771aKPNDVYSZX+TXtlM5wlb5S67v1VxbNbUN1me
	pnPljZPRpXpt+NzRTW7bKUMn0vwBsLDiBrnMiLOk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647460584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QknusALGx7ANYu1jBHUTeScnaZmiiqUIv44v3txo55Y=;
	b=F8fQSS8EWyBr8sO8FHWGrMEFsulz2Fb8rdalzTL0kzSFrLiI3VSZZRcRlK16AGa8
	pVu+Ezg/hpNXYIPvoRX868j4Ju1bSmQigk/lKIqbaNiYH2DTVuoFj5H2aaEwDtxGiZ8
	YrqBMH5w5c4qz5RY5zkeeMvo7BWY9NB1upgQxDgg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f944d8d77-12993282-5add-48c1-8cad-4ac59e77b1c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42563cbfa6a6c50439d4af2aa9e0dfa81290f19296d020176de296dcbe764caa
Date: Wed, 16 Mar 2022 19:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647460584
