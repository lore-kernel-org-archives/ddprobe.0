Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4C3D5A38
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 22:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646949685;
	h=To:Subject:From:Message-Id:Date;
	bh=oUPN/cggteo9Exfa/8wpmItgOITnQpJUAlSp7zcGpgM=;
	b=lv58F9uTklq8mQs40GJc+4Tfk/02Fx269sxywME2ZCzh1bguEyU8Ka9BPLVoDNkC
	WDhp01I+rkaf8vLAG2PaVUhWfETgtk/4wNnRHkpvZ+jbRCvrdDjI3krMrlGwTcbOMx9
	4BdGN4/DnuGU9x9srreC/FRRo1txuPw+9JEK4qy8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646949685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oUPN/cggteo9Exfa/8wpmItgOITnQpJUAlSp7zcGpgM=;
	b=cKOmX6e9I+fVwZBy8v2U/CMAYpn8py6rPasc3CuGLs875TNEFWfW30KnqPQD+/MG
	SE1/dXYrczWVjSAy+Hpfc40OKvTVQMIo7sIkopaA2hf3miNBOF71vbh0WhDVtbJJ/t9
	YlmrSndUcW0ZAQV/YsCNE79JOTWWYW+C7ZxWWMGU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f75d9d619-5060f919-2d5b-473e-a3af-634c2425f37d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6b82e11626f6f53954c892809615c345d896e21c0ac61e386202ad95b489260
Date: Thu, 10 Mar 2022 22:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646949684
