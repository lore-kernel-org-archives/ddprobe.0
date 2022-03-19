Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72880160
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 19:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647717384;
	h=To:Subject:From:Message-Id:Date;
	bh=NiAoRz2/n4oRgcr+oyf529Fv2OH1dUo/ddra778TEtw=;
	b=f7t2WJV+3D3BRRJcB3vx528kWznCeXcafLZ0kANtxBETpHqybUKGDfidVJkkZyvC
	xdkp4/U9ayZDvL/fN1jsJXLu5mGyei+0P/Xe8R+IfDi930X59NuV+Xuw2neEZOUc1o+
	6gI+L9/tZADKdwQtdx8lHdz9anzIgsDskXIw844k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647717384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NiAoRz2/n4oRgcr+oyf529Fv2OH1dUo/ddra778TEtw=;
	b=Vo9tgtQTyhUVudmAEjJgOMM+jZgsBG2nH72lD9BoLu/THowMAv47JF3F5EEYqIqk
	Q37XchisvxOAyeXOKUctXfrDOVeBdSyCujDWD6dhf+FVE19qETObBsRb1nDU20c1imf
	j6Ro2mKD77u3hAjXKUHYk99E6nVeJNOC/1GL8PCM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa39c0230-dce747ae-2038-47de-ad82-5c118365b064-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e551d060ac2828da36b309cf5f5449278d6f18e91d41c0a3d92ac86df3745e7
Date: Sat, 19 Mar 2022 19:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647717384
