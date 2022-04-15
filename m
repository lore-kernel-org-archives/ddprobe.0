Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1235C7E
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 13:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650028798;
	h=To:Subject:From:Message-Id:Date;
	bh=fWSA40/XJaMyZ8Yhb8oA/MIdq0bJKDa/JA9Q3elBY5E=;
	b=k4JeH6K0x/5qi4J6JtStt5Gxq09lhW8PZ2oQqIUSXQpokZZd2H3R88k9KD8ITA2C
	MlN/PjwUPEpchDhtVjUBE0wn028H0n88ERjJkEuiIZ0odkamIxzgWxRAcwGz+hMHwn3
	alHZv02xLL21JsH6BYDlYjLdNw6sanTUWRIL6JVo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650028798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fWSA40/XJaMyZ8Yhb8oA/MIdq0bJKDa/JA9Q3elBY5E=;
	b=hvXMVNk4bUdUkGNRoyPWshkzLxkc9GCaAv87U9M//AivqyOLQnw01XfH7CfUNlkb
	jI89aEeh5XtMc7HEacdOz3AILl8BKRWR0nqngsh9C3/f3RUGNxH6ZA6rARJYoVpzn8k
	ENXDwMctKcMp2byII4DpzhNThtMfZ96awDl0Svdk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802d616162-f2f45854-5444-4ace-a885-b602fb3815a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 705d28fcda5b083bdb4a0a78b68fea147d9c0886436842fe56f1c741959a8144
Date: Fri, 15 Apr 2022 13:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650028798
