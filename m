Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0F315A7
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660048852;
	h=To:Subject:From:Message-Id:Date;
	bh=maFukk258rqdWOux2etiPnniCW3tA5PQunp3gNvv9+g=;
	b=gFMRaW93Nw4FAtpKnlMfZlhaWx3dFBG5KZ6Vz5bu12Eh3NRnEjtcFfAkwRS4tdXy
	U3IIrHS0s+sk++xkWqlG/SIbV3CGImrjSVXuBHttE1DZlAfzC29RImROpWyP1LAPvLv
	wfsqysn0VWI1GzrEq0LI+2JDVCVGtnD6MIYZ5gw4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660048852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=maFukk258rqdWOux2etiPnniCW3tA5PQunp3gNvv9+g=;
	b=cCy1m7uU829IDbZnmwdvya+EgR3tDI/8cjE535UT8Rndthcl40xTpB4SjgtuIqsl
	4mOOYuxBUXv3ymgY7n96fYMQbGj0CAw70Oqo9bnsrwJcwm/Xkpw5cOxbveAbhaei6Hr
	vIJ4BQCvRD2ZezQaEA6ctqW2MHpsiigpOVbkA1oE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182829f4667-e6884b5d-e72b-481b-a2bc-fc9d853a064f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93ce0091bf749e5fcff7a20ce105cf31c8c6b1ac6bef79c267cf3fd5cdba88bd
Date: Tue, 9 Aug 2022 12:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660048852
