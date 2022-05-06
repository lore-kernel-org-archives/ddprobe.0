Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F7A7F4
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 10:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651832158;
	h=To:Subject:From:Message-Id:Date;
	bh=GRkXH+EkpwCC9WuV7ciME4dStjZmbQG5eTrrIRhs9Vk=;
	b=OIkC0h8SoN2jzto/LVUqVYL6ARZOpLyqtUJSSCL43VOOQ2XDfidFEljZT92F3NQk
	34ZUmsQLNe/zZAwztqs9GGjHUUf06vcNubqxdA6xdrxziLjmHCVgz/mbIt7e69ncHoO
	Xds+14/0JxSjJi1eEYaXNmyRJVwQZR4tQCTSYMX8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651832158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GRkXH+EkpwCC9WuV7ciME4dStjZmbQG5eTrrIRhs9Vk=;
	b=A6Fn1uRj9kbsbkP684MpvQE6mInB6Ms/xDsMGOBSZysLPvDZ6JbITE5hCHMS0wDA
	MmEoSOSYhGaNTmGUHJ8Xz5+j5N5NWIEfPKmStTknNzINK1YqgEQZOuc1R2EPrs4mRxn
	NoSlQUURdNzGl2ibFIthqKAJfKYWgfvulC1eRtyA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018098de785e-4144a340-93c9-4bd9-b905-bf853eeece2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82ac19560387ef9e28971b3f4e3dfe15896d4142cc6848995023bf352924bc9c
Date: Fri, 6 May 2022 10:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651832158
