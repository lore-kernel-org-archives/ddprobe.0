Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 048A32F2A
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 14:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647442285;
	h=To:Subject:From:Message-Id:Date;
	bh=oObaOg/HAccJ9LIsnHfLbqdNI9Qto4AKFlMOoKqp5Qk=;
	b=FO2z1Q+NbqK/k+H5bH84nyDUkSd++p8KGjcDuxHqSsoS6ntbNEsMFl/Jz5usGK1B
	IhNF2rEFb1RDW1ZJ1fUJfyYDOylGTIG9TLPVSz3zOB/uA0WLRgRpOAlxe010cLgwFFM
	UGQ7dh8yguy8di/MGF2yIhqWTTkJdohbS6xpadSg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647442285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oObaOg/HAccJ9LIsnHfLbqdNI9Qto4AKFlMOoKqp5Qk=;
	b=RwbAg5+qDGOgYI/LaLO76jwzvpx/NETBm3D6lwQiALxoLyvlN1LwQSg63GPKjvfF
	1WtJzq7G7sTRksrhmF3BSk4TjFTr5ogh6P6oCcth7qXNlP8/RSTbckKrqME5FU+pPGN
	B/YYyFsI6MU1mnc7nkl5auPiD2eOWGVZButlzNHc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f933650d8-1b9a1834-e5b3-4468-b81e-4e4d4824f445-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c103c3296da1439f2a077a7197a911e22c1ec5474a436efde33344bee476d38
Date: Wed, 16 Mar 2022 14:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647442284
