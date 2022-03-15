Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE7F11FB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 10:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647341784;
	h=To:Subject:From:Message-Id:Date;
	bh=4piFOQu27pLh9hWWF5JyZUx6Ivfq1MRZOz41Oz2ENPA=;
	b=K73ggFo82pX8fjf5JE3HKih5IHASVuoyb/lphzGyCQU0goA2GqjQnz4OueAweZQ0
	AJneep5OBx+jPZSKJXGnuiIaYBOYRzach1Ctgp3eKD9RLIZvIVZtWs7syZbziFNn8rY
	TudfBWh27V5fbrs5BlYEEv4z5r/veLYNAHbcM60Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647341784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4piFOQu27pLh9hWWF5JyZUx6Ivfq1MRZOz41Oz2ENPA=;
	b=gty/QtM6JrijHzunx67rrGo7gefG7KUk5Q5tS3sewp+Jd192fgIb+jAz9JwT2y5H
	OJBx59HlCw3JMDYMe+25jUhPIVrbj/5517Vidywu+kBWUZeVROS34VfS/zi4cmXw4zN
	Z/oxiyuRzZ69U1fvJiyU/upqsP14ZSKYuBhqbOEE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8d38cebd-da5d1c4d-8df1-4eab-9ca0-810a34085fa4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a57231ac843611197bbd36348ef49b1a6b17247a47288cfcf40d65e5101f4c9
Date: Tue, 15 Mar 2022 10:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647341784
