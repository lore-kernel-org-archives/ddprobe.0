Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142DF1FA6
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 13:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651326298;
	h=To:Subject:From:Message-Id:Date;
	bh=VOFV+AmjjIwk4wd6Bl+HpweVLFyQEOzjPjl0iteirzA=;
	b=f6VzIMK2StIJdRRJ63WvFIQsuWcpecQauAvx6hwjbMXJO9VVpHHnaktaPq7c7HXo
	UoEe1WHCtw1lL5/y4N4Coc7cJs7woHvVjIsEit1xS8AK7lGW8OEhCAVByOQZ0IffMN+
	V/vK6SnHuWXqpB7D6sQ1M8TpRJdLPhmttkkh32pI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651326298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VOFV+AmjjIwk4wd6Bl+HpweVLFyQEOzjPjl0iteirzA=;
	b=E/Hsbdgo7uiMcue4KmdzxDdm5t4W29dNyPRHtufEEBxMtzfVyowmGTDInBzLI1dv
	QW5SpIwjKEZpL/PjNb4FmtxkrsDf6PCxyohPdODVbef8/UFpibLGb1IxEJS/DmHH1vC
	z8IHWyXBrG6QFTOactvciLTdnWDGW8hU1gvf6aqE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807ab7a8a0-1cba42df-0490-4f23-ae27-5429186baa63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4968a63bc30cbab36dc0eea0bfe25e1ad340e791caf229fce3794f481cb1063
Date: Sat, 30 Apr 2022 13:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651326298
