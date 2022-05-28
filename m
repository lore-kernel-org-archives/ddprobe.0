Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1686F7B
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 18:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653761099;
	h=To:Subject:From:Message-Id:Date;
	bh=blPwpnVi7QhSw1pBBPC+DblQZdACL03PFbym7qjc8sA=;
	b=ifAO+AYt9RFm9iH+XCVszxSz0OpKVO0CchdKb6akb3bgGqWSJmnHq1Cx2034gJvZ
	ipQCwQmp6Qmnp5dPvsebmBH56NMhN1vKutOeq0BEVa25gYveqxdTs+3qLmocSWD3S8K
	oNcoyaN3oDpwIhvV/ri6DVL+vonIPLvPL1/oGQJE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653761099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=blPwpnVi7QhSw1pBBPC+DblQZdACL03PFbym7qjc8sA=;
	b=YaBi5TElRjy3CpCNbUFyF4ec9YGFZ+ujQmhexXtcWdFAYtb+5uIWpaOeTuO9Njoq
	aaC+Q7eDXQ1rly07etYoD7hE4T/YAN/hwHmisQleUa3XF6v5QLKW3eUfFz82sPgb0Y2
	z5ISRXaXs4luECVQAdJ5ozKlWokATaRb3/En8vi0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810bd7c62f-c9ffc0e2-3542-4003-9849-47628cdef3bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32a04c14a25ca98f6a03baeac323d8e9294b3d3b915cf7f81497344f870028b4
Date: Sat, 28 May 2022 18:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653761099
