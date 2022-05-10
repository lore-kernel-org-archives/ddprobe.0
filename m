Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFF53D9F
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 23:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652225879;
	h=To:Subject:From:Message-Id:Date;
	bh=p3G5eThqKrMf0ssDVnhJsqCI+yluk7CbhewowSK15qo=;
	b=jcOEDnJPzM4MeuzWc/NPUrHYZorFbZ04Px2qo5OMzGbNb0onwgDKhkbuwtEf49z2
	6z6QhY1t4Qr70fqxI3CORQxivGvNn7/oru7VbGJXRLbIQV0zzqsOYLBWvrKMfbB5VUx
	ADdx6xaHqjOk0hPBRZo61d2OUji2E3zDNkxTq3YQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652225879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p3G5eThqKrMf0ssDVnhJsqCI+yluk7CbhewowSK15qo=;
	b=j/kGP5TRJ5DVYqj4H3K/l/4kxNkDHvR4Tt7LaLhSsoJ3wg3ba4mTbZFoNAiLX5lf
	rfbshuxbaj5kmLygkK/F9RLLZDAlpQ5GfbGE/dkkRm9n7LzbHyJCMtTu1ZWjEHOF3B2
	3hI2E86ovympR63J0lqOKG67nxACJIzu7ADy/uIc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b0562cdb-58fdc26a-1cfd-4505-bdbc-62d524ad0c56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64a9a3a4098c0bb92f0a6cff449db499162092200a27d1da13aca04e7181cdd7
Date: Tue, 10 May 2022 23:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652225879
