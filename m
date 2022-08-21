Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDCDA2112
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661101253;
	h=To:Subject:From:Message-Id:Date;
	bh=UgGZRNGoO6Ys08py5v2h9kkmVBHUqAjRgxrRiymgYlk=;
	b=QGad5QXvXYQdeseGtb2JG3qvBUT0ZFV+EMPpJDCyeZs9+dPgxf66Ik1CXnwEPCS1
	/doTi6DciuxXSWA/oXYvGyFWu0O8ZvhbMYVPxEc2aXKZ4Er/Pa6l4HvYP+yp1MCQKR7
	81d02stmn8klrRxWBQbyIBlTL1ESobIDm5kBJ1TI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661101253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UgGZRNGoO6Ys08py5v2h9kkmVBHUqAjRgxrRiymgYlk=;
	b=fdktLGRW8Tea9J0sa81fLOfrtJ6Tx8Bnt73clADMLB9epyCuWBzZTWidIGBF4rHn
	cHYrWoPUepcDMKpW+yXbddeaDG7eYzCrlFDo6CjMZmUOJHgKrX3sBI3C+YJgF0O7BI6
	ZFfjjkX7qd+J8XvCUQXNZHwPPBfJg85uihtQ1qRg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c159a01b-730b942b-ce5c-40ea-ac27-66328e9db164-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d00c7257594133775541147eee49af5c1cbb9681476e76c067762afee2a48ee9
Date: Sun, 21 Aug 2022 17:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661101252
