Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5858F180
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 11:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647689784;
	h=To:Subject:From:Message-Id:Date;
	bh=d9hvxCFacyD342ECgxFaAbcs0zF7RY4BklOSSv+x+68=;
	b=JRwYLlskN76IJdOfAB4/P7yOSgD8MgHC4mnmI9qlPyj1bFBggoQcjkmGOyMJctE3
	YcV4EtawD+JpFpalVaaxziEnLc/sogkFJRUms7FBDuE+avRj50UP1u3LG+m4skpQFEg
	Zj8Wuxef7okq7ScEgP7mUDn9dtiuFc8Nz2DEz4+w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647689784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d9hvxCFacyD342ECgxFaAbcs0zF7RY4BklOSSv+x+68=;
	b=AFybrnXc85q1QsLOy/oCj8MJqRYwqXvaklLTYBLViByW7kCSemXC8tKdwjmrfOph
	jD4AaoDv9dimagouN9S9aq7ntoPfrhZPMlJGznAqPL+NhzKpLHxHvR0LhoD1tzKDaAB
	wAF1iuNxg5Q5L6J/cR+Kunne6+Qm6ZUSCr1hMTqs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa1f6ddba-24e4024f-fb10-4e7d-a244-db2f64b8d984-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98b0ba5fdb101bc3cbb60ddb6e1354b0be35c9363ed803f06aff6b4e5abc9c96
Date: Sat, 19 Mar 2022 11:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647689784
