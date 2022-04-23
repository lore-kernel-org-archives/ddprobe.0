Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E0F17C2
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 09:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650707518;
	h=To:Subject:From:Message-Id:Date;
	bh=07/RiOxnsfNzL4oapwxxxlrm0Eh9uWgBlkV8Xpzko00=;
	b=fk2KFBbSnEH9PYzgmVhUzgzjYyFlbj50QB0WSL3i4rojkB3okevhxjKbUYopBfu8
	MQG7F/h1dhPNKR0WPSl3EGddwSrBdOUlryliucWg+KO7ZwIdKxMYVlUhIjRo6ucK+W1
	v68faZhfdBFgxZtbGJxZ7q0M/1C6RDLgR6mWdA5A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650707518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=07/RiOxnsfNzL4oapwxxxlrm0Eh9uWgBlkV8Xpzko00=;
	b=EBKTHp6NilVchS8rPPcrlnGmxfQ4u+rQt02qndkmeL2UZ02ydXPMewAAdsNgJYMD
	9X+YEJYD02P5JksFy+0Sz2SaGkJDSE1luL7BzNJ4nPluLK25jQcV2tKnwGtC7BQODO4
	y0QvF3FpfDJSwEvJITvCaoGvpM10rlMJtfqVJe04=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018055d5d31d-ff2009f3-e4b4-4f39-91fa-95be7369ec55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9cfd13f0bcb2a31c04231840c4f32bd22286903834067484fe88de7fcd7f7646
Date: Sat, 23 Apr 2022 09:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650707518
