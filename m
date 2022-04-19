Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD00A23
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 03:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650339058;
	h=To:Subject:From:Message-Id:Date;
	bh=K2eL040U24F72h6d7XyL/uIjVZvF6Mf8d7g0yhs87oA=;
	b=SB1BwaKkGMHUhwGuMQiQe3SMCXo0/H7BNxalspdiPmjEa0U99Ue0RRyFyjzIYrbL
	5iSN0AI/3MJ2hsHyf5lCe7/GaKdJtU87ixkJO3BFoMe2ejLO7045leH7cLxc3AqUiTQ
	ZYUXshm7W8yEUtuXYmfIQLtBzpLeS8x8JT+i+ZVg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650339058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K2eL040U24F72h6d7XyL/uIjVZvF6Mf8d7g0yhs87oA=;
	b=brki07QruUy1UeXxZFPrmk2ToKT/PGsjOWDgV4uyaGT9od34yndiIF++uWEJBIex
	omK6C/eEMYjYvZz0ChQCu/1PF4x8MVS3yEh42m6pETYUwnlmMITWhK5vNXp8YCNo0nD
	NfTH6E0QyhP2dT84Lod2fc2t5QGYh7pnqYVYWKME=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803fdf9280-ada2ee95-72bc-4c58-bd34-4763301df633-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8c83155265e71d1de9d0b5124557f00eba3e754a2d9463fe8f4dac6b5b4c760
Date: Tue, 19 Apr 2022 03:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650339058
