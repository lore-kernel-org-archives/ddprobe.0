Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A477A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 07:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656142012;
	h=To:Subject:From:Message-Id:Date;
	bh=eMmW0ehkOy+YYfxixGbdcD5HfZVg2oYIKxnDHUNPij8=;
	b=DEPjMjp1J2Ud0J79yQMVpb3j+PA4ClCmwI1g43Bw8N9ePYLAa7HJquH+FlClkCqd
	ISgp25LsHgrZeHC37WERZP7FlOwKfOH+3DibcO2ibF3gRTly9WYQERMDZWb/Pvy1nEs
	dhS8naDghK7PhtLcwiVOExZk+KrhA7p++TfDBXMo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656142012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eMmW0ehkOy+YYfxixGbdcD5HfZVg2oYIKxnDHUNPij8=;
	b=JtNQvJNhca10oIHJXT/o817xUb8ew1s62QOctkaXuVhED8qlSglZCLVjB+kHMuc6
	idGGLRzs5SSqkwD7lyzrrQD8+VCj6akZtBlIP23I2Bg0hSXOK0CcInBzeVkHP0rf3SO
	YFkfCMKMSsCDd76ySSWTGsnzUGrlSAzwLNYFhCTg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018199c19fd0-ff02ac11-18d0-4e01-9b91-9b86f7221f7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d70d9679b90e0ada67434c4cde941dd5f58444ada9f039806a7a4e963a54bf19
Date: Sat, 25 Jun 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656142012
