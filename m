Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D55B3D61
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 23:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650323578;
	h=To:Subject:From:Message-Id:Date;
	bh=vcat5OPZDdpvMDvlhVoAa2XgKVVoCKxhE14iumu9z3Q=;
	b=OF3UO9ui/tcXuLVEaMYajFBJBS4KzUCrG3yto56dl1Y5/4puqK+LArsVEdQn4QFJ
	VAO9yaE7UclVwuDr4/ahOkTbjUNVIX4tmmeOfh6DnqEsI+K73pY+Rdv/bqX1Ft0HP9T
	3RdkbIkJK3hvJ2E849C0kor11imNw0U21DMP016A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650323578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vcat5OPZDdpvMDvlhVoAa2XgKVVoCKxhE14iumu9z3Q=;
	b=ZfnGGHXTPuz6aCjwyjXTifWSej44myWbXfKyGTrs6AP61TnKeZDzqN68OaZWs3SL
	U3tI4WCXzFbSFkX3KbMucqQuvUs5tsO3cmhgWw93Vr85DoVrTlkKX++LvUi91IAIJau
	pkC+5tUwpQmGK5vTkLsk5jr3Fti9iSpaSHLdOG+k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803ef35dce-d625df48-8178-49a6-bf83-4365b83cc4b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64ad8d2df2aa8ebf085a5150718d8d459f8dbe49e71eb6d57094b9a18044719b
Date: Mon, 18 Apr 2022 23:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650323578
