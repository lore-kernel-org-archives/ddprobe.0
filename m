Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B426E4688
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 08:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647420985;
	h=To:Subject:From:Message-Id:Date;
	bh=cCldF91kBpPQa/WFpypMwC4eGYva/SlzMpCWjcuxnXU=;
	b=EDi+Zu2GMHhtQ/KND5R1oLlAs6bvHRoKuE21m/olY6wyL5tXYUngd87bEQInMPgx
	SzfwHKTpD/cX8oaVVphv+PB9o/Qo8f8hFn5mdvu9XZfJUwo4bRWrJu2TqMuS+xXPnUj
	iUbBF0GvMwkCRs2rr0xeCtoGIbnoVjaDECruZInI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647420985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cCldF91kBpPQa/WFpypMwC4eGYva/SlzMpCWjcuxnXU=;
	b=by6ebET5EhAfbF3Cx7bH7572IZvcZcTTT809RpP/IPahI4sTujTu7sYZNNTrrAZI
	34OTZBDWePbJ/7SBG1iaBzZoUd1QBSaR9OVNqczVKFThyF7AzZoxN2LYUZzikHlGQLJ
	AFmz4XEVB+8ad3A0q7Sbtlg/R8aYSBZimtMGD2M4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f91f14da0-4c9ae39f-79d9-4fb8-bb8b-f9fa43496dda-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04366f52015a873d80d96251ca0cc0ec61ef40f6a5aaa9d5736c275c4bcd9496
Date: Wed, 16 Mar 2022 08:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647420984
