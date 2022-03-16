Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7017938C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 13:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647437484;
	h=To:Subject:From:Message-Id:Date;
	bh=jCA8FEoGurI7DQhKu0BO1f4NOiY+CuYMQColB2a9bSk=;
	b=juq1zmm4nwV5DzEUHTBKNfY835MS9Oqd/jjEG3V4oue8nl4utCQUoxg89JDDj2Wq
	kvMWEPaO9gxqqnIj5hVJPxEV0IVZMolqSaZgKLv5cPN8eh2rWF4lUwwFBqMVEXfQmA2
	faTgHEL1DNvEWwE0Pgoje2MOI+ofPBYtIK1LIWx8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647437484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jCA8FEoGurI7DQhKu0BO1f4NOiY+CuYMQColB2a9bSk=;
	b=Fj1qYdwFJW54oHfAsVMWHAxjdowkr43Kh1FkyF6th8y29NMgnhf640jUu15DWtXt
	kPPmsO2Pt9TCkke8GbvBXvK6RN2A43Ki1HXYN132OO8CRehAFPGr/7JCsJAjx3ITQkf
	b12Ezaza18+ekOelz+GOmh7iecRlnkb3EFw6mbHc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f92ed12eb-61a847a1-46be-41c3-83a3-1705ab713159-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 272bab09c155348ff48a1eb0c0ca9b3eed859b0112d81e909096e60115bde511
Date: Wed, 16 Mar 2022 13:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647437484
