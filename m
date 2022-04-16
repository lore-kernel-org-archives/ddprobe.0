Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0A017C9
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 00:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650069538;
	h=To:Subject:From:Message-Id:Date;
	bh=nrnmEMfMy8t9RhnWyq+zu3gLU0bcZZC4IiDQuAYq3Yw=;
	b=ImL16eG4Yrm1tmYbDCb7z0fx9tc3E2QQLjVyCNH3TPupGoMWPrd2a57JmaqHk3Nb
	5jaqyyJTYBgjFnuuqVQ3l78pJMYrde03fL5jnlfoaFjNHFz/PhOlx68lfcIzpPRD7oF
	wuP9mMdHNaw2VadZdLap/9Cp+w1LGj37CRqiuQqs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650069538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nrnmEMfMy8t9RhnWyq+zu3gLU0bcZZC4IiDQuAYq3Yw=;
	b=TyChsujNtua9gPBodQZ2AyIBGmGPIM1VrL9EeTARzJhJdJZwBcfIuevctkVA1bOi
	a4H2N1G/go5VKpsrLCNy1aOCsPFb1gr5C65AeEJSvZCI0ILwyPKy+CHdm5YrXCRKdhL
	48IRy6wY3VXiQvSl7zplwhs1kJ29iB+RWJY+4al0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802fcf05ee-f1231168-aa88-43ea-ba0f-4f3bdca1cdd9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e9ff8469bb91dc632d62cbe6329bc72af77454f357f02c07e73506aeec0ec24
Date: Sat, 16 Apr 2022 00:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650069538
